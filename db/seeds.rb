# Article.destroy_all
# User.destroy_all
# ArticleTag.destroy_all



# User.create!([{name: "Will", email: "will@yahoo.com", password_digest: "password"}, {name: "Tayt", email: "tayt@gmail.com", password_digest: "password"}])

# Page.create!([{title: "Markets"}, {title: "Private Equity"}, {title: "Banking"}])

# Subpage.create!([{title: "Technical Analysis", page_id: 1}, {title: "Deal Flow", page_id: 2}, {title: "Investment Banking", page_id: 3}])

# Tag.create!([{name: "Front-Office"}, {name: "Back-Office"}, {name: "Regulation"}])

# Article.create!([{title: "Shedding Light on the PE field", text: "Digging into the data from studies into the “very hot” Private Equity market in Canada, some interesting nuggets emerge — US financial buyers closed 79 deals in Canada in 2017, a new record, with large-market transactions perhaps playing a bigger role over the past few years than expected...", user_id: 1, subpage_id: 2}, {title: "Burton Malkiel Talks the Random Walk", text: "Passive investing has no more outspoken advocate than Burton
# Malkiel. At age 72, Malkiel remains every bit as committed to the
# efficient market hypothesis as when he wrote A Random Walk Down
# Wall Street in 1973.
# Malkiel, who has taught finance at Princeton for the last 20 years, was
# a featured speaker at the Forbes Advisor Conference last week. He
# insists that investors should buy and hold index funds and defended
# his position against a series of challenges put to him by John Dobosz,
# a Forbes editor...", user_id: 2, subpage_id: 1}])

# ArticleTag.create!([{tag_id: 1, article_id: 1}, {tag_id: 3, article_id: 2}])