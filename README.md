## condo callback example

Here's a minimum working example of a condo job that requres other jobs; launch it from a login node with `bash callback.sh`. In that script we submit 4 jobs, then on the last line use the `--dependency` flag to require all 4 complete successfully before starting a fifth job. The timestamps printed to the output files indicate when each job ran; note the 5th ran long after scheduling was complete, indicating it waited for all 4 dependent jobs to exit.
