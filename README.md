# myec2ctl
[ec2ctl](https://github.com/y13i/ec2ctl) in docker.

## Prerequisite
- [docker](https://docs.docker.com/)
- [docker-compose](https://docs.docker.com/compose/)
- ([direnv](https://github.com/direnv/direnv))

## Usage
### Set AWS credentials and region
Set environment variable `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, and `AWS_REGION`.
```sh
$ direnv edit . # direnv is not required
export AWS_ACCESS_KEY_ID=AKIAXXXXXXXXXXXXXXXXXX
export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXXXXXXX
export AWS_REGION=ap-northeast-1
```

### Run
```sh
$ docker-compose run --rm ec2ctl --pretty
{
  "time": "2018-09-07 06:39:02 +0000",
  "severity": "INFO",
  "ec2_instances_summary": [
    {
      "instance_id": "i-xxxxxxxxxxxx",
      "tag:Name": "web01",
      "instance_type": "t2.small",
      "public_dns_name": "ec2-XX-XX-XX-XX.ap-northeast-1.compute.amazonaws.com",
      "state.name": "running",
      "ssm:ping_status": null
    }
  ]
}
```

### Use aws profile
```sh
$ docker-compose run --rm ec2ctl --pretty --profile myproject
```

## Inspired by ...
https://github.com/h-imaoka/mypiculet