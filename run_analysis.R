#insert data
test.labels <- read.table("test/y_test.txt", col.names="label")
test.subjects <- read.table("test/subject_test.txt", col.names="subject")
test.data <- read.table("test/X_test.txt")
train.labels <- read.table("train/y_train.txt", col.names="label")
train.subjects <- read.table("train/subject_train.txt", col.names="subject")
train.data <- read.table("train/X_train.txt")
#combine
dataset <- rbind(cbind(test.subjects, test.labels, test.data),
              cbind(train.subjects, train.labels, train.data))

features <- read.table("features.txt", strip.white=TRUE, stringsAsFactors=FALSE)
meanstd<- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]

#extract mean, std
d.meanstd <- dataset[, c(1, 2, meanstd$V1+2)]

# read activities label
labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
# replace labels in data with label names
d.meanstd$label <- labels[d.meanstd$label, 2]

# column and feature name list
a.colnames <- c("subject", "label", meanstd$V2)

# remove non-alphabets, lowercase
a.colnames <- tolower(gsub("[^[:alpha:]]", "", a.colnames))

colnames(d.meanstd) <- a.colnames

# average of each variable for each activity and each subject.
data <- aggregate(d.meanstd[, 3:ncol(d.meanstd)],
                       by=list(subject = d.meanstd$subject, 
                               label = d.meanstd$label),
                       mean)

write.table(format(data, scientific=T), "complete.txt",
            row.names=F, col.names=F, quote=2)
