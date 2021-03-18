library(mailR)
sender <- "email@domain.com"
recipient <- "email@domain.com"
notification <- send.mail(from = sender,
to = recipient,
subject = "Finished execution",
Sys.Date(), "{}",
body = "MrBayes execution on 16 processors for the Cynodontidae analysis",
encoding = "utf-8",
smtp = list(host.name = "smtp.gmail.com", port = 465, user.name = "email@domain.com", passwd = Sys.getenv("MAIL_KEY"), ssl = TRUE),
authenticate = TRUE,
attach.files = NULL,
send = TRUE,
html = TRUE,
inline = TRUE, debug = FALSE
)
