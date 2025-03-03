FROM alpine

RUN apk add --no-cache python3

ADD /AlwaysRememberUsThisWay-1.txt /home/data/AlwaysRememberUsThisWay-1.txt
ADD /IF-1.txt /home/data/IF-1.txt
ADD /scripts.py /home/scripts.py
RUN mkdir -p /home/output/
CMD ["/home/scripts.py"]
ENTRYPOINT ["python3"]
