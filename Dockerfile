FROM docker.sdlocal.net/devel/stratperlbase

ADD modules.txt modules.txt

RUN cpanm < modules.txt

ADD lib/CSVW2RST.pm /usr/local/lib/

ADD scripts/metadata2rst.sh /usr/local/bin/

ENV PERL5LIB=/usr/local/lib

WORKDIR /mnt/cwd

CMD ["metadata2rst.sh", "metadata.json"]
