from __future__ import print_function
import logging

import tweet_pb2_grpc
import tweet_pb2

import grpc

def run():
    # NOTE(gRPC Python Team): .close() is possible on a channel and should be
    # used in circumstances in which the with statement does not fit the needs
    # of the code.
    with grpc.insecure_channel('localhost:50051') as channel:
        stub = tweet_pb2_grpc.GetTweetsStub(channel)
        # create searchtweets message
        searchWork = tweet_pb2.SearchTerm(searchterm="Work")

        # send request to GetTweetsServer

        response = stub.SearchTweets(searchWork)
    # for tweet in response.tweets:
    #     print(tweet)

        response = stub.SearchATweet(searchWork)
    print(response)

if __name__ == '__main__':
    logging.basicConfig()
    run()