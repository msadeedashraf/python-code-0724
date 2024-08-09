import json

job = '{"jobid": "1","title": "Front-end Developer","company": "ABC Company","location": "New York, NY","description": "We are seeking a talented Front-end Developer to join our team...","applyLink": "https://example.com/apply"}'
myJob = json.loads(job)

print(myJob["title"])
print(myJob["company"])
print(myJob["location"])
