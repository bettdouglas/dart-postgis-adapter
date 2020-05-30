import tweet_pb2_grpc
import tweet_pb2

from concurrent import futures
import logging

import grpc


class TweetServer(tweet_pb2_grpc.GetTweetsServicer):
    def SearchTweets(self, request, context):
        print(request.searchterm)
        # search for tweets from twitter

        tweets = [
            tweet_pb2.Tweet(
                id = 1,
                tweet = "Hi, from grpc",
                likes = 3,
                location = "Nairobi"
            ),
            tweet_pb2.Tweet(
                id = 1,
                tweet = "Hi, from grpc",
                likes = 3,
                location = "Nairobi"
            ),
            tweet_pb2.Tweet(
                id = 1,
                tweet = "Hi, from grpc",
                likes = 3,
                location = "Nairobi"
            )
        ]
        return tweet_pb2.Tweets(tweets=tweets)
    
    def SearchATweet(self, request, context):
        return tweet_pb2.Tweet(id = 1, tweet = 'Hi fucker', likes = 5, location="Limuru")
        
        

def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    tweet_pb2_grpc.add_GetTweetsServicer_to_server(TweetServer(), server)
    server.add_insecure_port('[::]:50051')
    server.start()
    server.wait_for_termination()


if __name__ == '__main__':
    logging.basicConfig()
    serve()