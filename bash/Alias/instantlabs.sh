alias idb="cd ~/Devel/go/src/github.com/instantlabs/ildb; echo -ne '\033]1;ILDb\007' "
alias idbb="cd ~/Devel/go/src/github.com/instantlabs/ildb/bbolt; echo -ne '\033]1;Bbolt\007' "
alias ilib="cd ~/Devel/go/src/github.com/instantlabs/illib; echo -ne '\033]1;ILLib\007' "
alias icore="cd ~/Devel/go/src/github.com/instantlabs/ilcore; echo -ne '\033]1;ILCore\007' "
alias iclients="cd ~/Devel/go/src/github.com/instantlabs/clients; echo -ne '\033]1;IClients\007' "
alias idbstress="cd ~/Devel/go/src/github.com/instantlabs/ildb/bbolt/cmd/stress_test; echo -ne '\033]1;StressTest\007' "


alias start-ilcore="icore; go build; env GO111MODULE=on go install github.com/instantlabs/ilcore/ilcore; ~/Devel/go/bin/ilcore"
alias start-ildb="ilib; make run-ildb"
