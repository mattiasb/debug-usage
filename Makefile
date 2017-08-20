SCRIPT=debug-usage

user-install:
	install -D $(SCRIPT) $(HOME)/.local/bin/
	install -m 644 -D 						\
		systemd/user/debug-usage-detailed.service		\
		$(HOME)/.config/systemd/user
	install -m 644 -D 						\
		systemd/user/debug-usage-uptime.service		\
		$(HOME)/.config/systemd/user
