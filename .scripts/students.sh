#!/bin/bash

# Combined array: each entry = "student_id|github_id|avatar_id"
STUDENTS=(
"300141550|emeraudesantu|211749528"
"300141567|Mamefatim14|188626020"
"300146667|hachemsouyadi|211596263"
"300148210|leandre00126|194731088"
"300148450|adjaoud-git|205994730"
"300150205|amelzourane|211596474"
"300150293|zakariadjellouli|211743410"
"300150399|awaworks|223561186"
"300150417|IkramSidhoum|198275764"
"300150527|hachemsouyadi|211596263"
"300150562|isako29|205994758"
"300151469|Rabia-777|206001876"
"300151492|JustinSandy99|211593057"
"300151825|FeatFreedy|195238262"
"300151833|Hannibalcarthage|205994935"
"300153476|dialloramatoulayebah|129418622"
"300153747|sarahocine|207281891"
"300154718|nabilaouladbouih|125617838"
)

## Example: iterate and access each part
#for entry in "${STUDENTS[@]}"; do
  #IFS='|' read -r STUDENT_ID GITHUB_ID AVATAR <<< "$entry"
  #echo "Student: $STUDENT_ID, GitHub: $GITHUB_ID, Avatar: $AVATAR"
#done
