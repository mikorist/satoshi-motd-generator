#!/bin/bash
quotes=(
"A purely peer-to-peer version of electronic cash would allow online payments to be sent directly from one party to another without going through a financial institution."
"As the number of users grows, the value per coin increases."
"Bitcoin can already scale much larger than Visa."
"Bitcoin is a technological tour de force."
"Bitcoin is an open-source project with no one in charge."
"Bitcoin is inherently anti-establishment, anti-system, and anti-state."
"Bitcoin is not a company; it’s an open source project."
"Bitcoin is the first implementation of a concept called cryptocurrency."
"Bitcoin is the most important invention in the history of the world since the internet."
"Bitcoin is the only currency that’s not backed by any centralized entity."
"Bitcoin would be convenient for people who don’t have a credit card or don’t want to use the cards they have."
"Bitcoin’s design is inherently anti-establishment, anti-system, and anti-state."
"By convention, the first transaction in a block is a special transaction that starts a new coin owned by the creator of the block."
"Cryptocurrency is an electronic payment system based on cryptographic proof instead of trust."
"Even if a bad actor gains control of the network, the network adapts to defend itself."
"Every informed person needs to know about Bitcoin because it might be one of the world’s most important developments."
"Governments are good at cutting off the heads of a centrally controlled networks like Napster, but pure P2P networks like Gnutella and Tor seem to be holding their own."
"I am not Dorian Nakamoto."
"I think the traditional banking model achieves a level of centralization that requires government intervention."
"If you don’t believe it or don’t get it, I don’t have the time to try to convince you, sorry."
"Imagine if gold turned to lead when stolen. If the thief gives it back, it turns to gold again."
"In a few decades when the reward gets too small, the transaction fee will become the main compensation for nodes. I’m sure that in 20 years there will either be very large transaction volume or no volume."
"It is a global distributed database, with additions to the database by consent of the majority, based on a set of rules they follow."
"It might make sense just to get some in case it catches on."
"It's very attractive to the libertarian viewpoint if we can explain it properly. I'm better with code than with words though."
"It’s an electronic payment system based on cryptographic proof instead of trust."
"It’s hard to believe in 10 years we’ll have over a billion people connected to the internet, and yet electronic money is still not feasible."
"It’s like better gold than gold."
"It’s the nature of Bitcoin that once version 0.1 was released, the core design was set in stone for the rest of its lifetime."
"I’d be surprised if 10 years from now we’re not using electronic currency in some way, now that we know a way to do it that will work."
"I’m better with code than with words though."
"I’m sure that in 20 years there will either be very large transaction volume or no volume."
"I’ve moved on to other things. It’s in good hands with Gavin and everyone."
"La red es robusta en su simplicidad no estructurada."
"Lost coins only make everyone else’s coins worth slightly more. Think of it as a donation to everyone."
"Nodes always consider the longest chain to be the correct one and will keep working on extending it."
"Proof-of-work is essentially one-CPU-one-vote."
"Re: long-term perspective of the coin, I am very optimistic."
"Regarding the crisis in Greece, it is important to remember that Bitcoin is not dependent on any central authority."
"Right now, there’s nothing to relate Bitcoin to."
"Sorry to be a wet blanket. Writing a description for this thing for general audiences is bloody hard. There’s nothing to relate it to."
"The design supports the privacy model of keeping public keys anonymous."
"The heat from your computer is not wasted if you need to heat your home."
"The nature of Bitcoin is such that once version 0.1 was released, the core design was set in stone for the rest of its lifetime."
"The only time we ever had the same situation was when the US was on the gold standard in the 19th century."
"The root problem with conventional currency is all the trust that’s required to make it work."
"The steady addition of a constant of amount of new coins is analogous to gold miners expending resources to add gold to circulation."
"The system is secure as long as honest nodes collectively control more CPU power than any cooperating group of attacker nodes."
"The Times 03/Jan/2009 Chancellor on brink of second bailout for banks."
"There’s nothing to relate Bitcoin to."
"Transactions are broadcast to all nodes."
"We can win a major battle in the arms race and gain a new territory of freedom for several years."
"WikiLeaks has kicked the hornet’s nest, and the swarm is headed towards us."
"With e-currency based on cryptographic proof, without the need to trust a third party middleman, money can be secure and transactions effortless."
"With the concept of nodes and blockchain, we are stepping towards a future where financial transactions are fully decentralized."
"Writing a description for this thing for general audiences is bloody hard. There’s nothing to relate it to."
"Yes, [we will not find a solution to political problems in cryptography] but we can win a major battle in the arms race and gain a new territory of freedom for several years."
)

ascii_art=$(cat <<'EOF'
⠀⠀⠀⠀⣿⡇⠀⢸⣿⡇⠀⠀⠀⠀
⠸⠿⣿⣿⣿⡿⠿⠿⣿⣿⣿⣶⣄⠀
⠀⠀⢸⣿⣿⡇⠀⠀⠀⠈⣿⣿⣿⠀
⠀⠀⢸⣿⣿⡇⠀⠀⢀⣠⣿⣿⠟⠀
⠀⠀⢸⣿⣿⡿⠿⠿⠿⣿⣿⣥⣄⠀
⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⢻⣿⣿⣧
⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⣼⣿⣿⣿
⢰⣶⣿⣿⣿⣷⣶⣶⣾⣿⣿⠿⠛⠁
⠀⠀⠀⠀⣿⡇⠀⢸⣿⡇⠀⠀
EOF
)

# Get a random quote
RANDOM=$$$(date +%s)
selected_quote=${quotes[$RANDOM % ${#quotes[@]}]}

# Write the quote to /etc/motd
echo "$ascii_art" | tee /etc/motd > /dev/null
echo "" | tee -a /etc/motd > /dev/null
echo "$selected_quote" | fold -s -w 80 | tee -a /etc/motd > /dev/null
echo "                        Satoshi Nakamoto" | tee -a /etc/motd > /dev/null
echo "" | tee -a /etc/motd > /dev/null