SCRIPT=debug-usage

install:
	install -D $(SCRIPT) $(HOME)/.local/bin/
	install -m 644 -D 						\
		systemd/user/debug-usage-load.service			\
		$(HOME)/.config/systemd/user
	install -m 644 -D 						\
		systemd/user/debug-usage-detailed.service		\
		$(HOME)/.config/systemd/user
	systemctl --user daemon-reload

start:
	systemctl --user start                                          \
		debug-usage-load.service                                \
		debug-usage-detailed.service

stop:
	systemctl --user stop                                           \
		debug-usage-load.service                                \
		debug-usage-detailed.service

restart:
	systemctl --user restart                                        \
		debug-usage-load.service                                \
		debug-usage-detailed.service

enable:
	systemctl --user enable                                         \
		debug-usage-load.service                                \
		debug-usage-detailed.service

disable:
	systemctl --user disable                                        \
		debug-usage-load.service                                \
		debug-usage-detailed.service

status:
	systemctl --user status                                         \
		debug-usage-load.service                                \
		debug-usage-detailed.service
