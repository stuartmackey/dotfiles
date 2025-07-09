systemctl enable clamav-freshclam.service
systemctl start clamav-freshclam.service

systemctl enable clamav-daemon.service
systemctl start clamav-daemon.service

systemctl enable clamav-clamonacc.service
systemctl start clamav-clamonacc.service
