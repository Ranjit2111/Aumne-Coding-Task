# openapi_client.PostsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_post_posts_post**](PostsApi.md#create_post_posts_post) | **POST** /posts/ | Create Post
[**get_post_posts_post_id_get**](PostsApi.md#get_post_posts_post_id_get) | **GET** /posts/{post_id} | Get Post
[**list_posts_posts_get**](PostsApi.md#list_posts_posts_get) | **GET** /posts/ | List Posts
[**publish_post_posts_post_id_publish_patch**](PostsApi.md#publish_post_posts_post_id_publish_patch) | **PATCH** /posts/{post_id}/publish/ | Publish Post
[**submit_post_posts_post_id_submit_post**](PostsApi.md#submit_post_posts_post_id_submit_post) | **POST** /posts/{post_id}/submit/ | Submit Post
[**update_post_posts_post_id_patch**](PostsApi.md#update_post_posts_post_id_patch) | **PATCH** /posts/{post_id} | Update Post


# **create_post_posts_post**
> PostResponse create_post_posts_post(post_create)

Create Post

Create a new draft post

### Example


```python
import openapi_client
from openapi_client.models.post_create import PostCreate
from openapi_client.models.post_response import PostResponse
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.PostsApi(api_client)
    post_create = openapi_client.PostCreate() # PostCreate | 

    try:
        # Create Post
        api_response = api_instance.create_post_posts_post(post_create)
        print("The response of PostsApi->create_post_posts_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PostsApi->create_post_posts_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_create** | [**PostCreate**](PostCreate.md)|  | 

### Return type

[**PostResponse**](PostResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Successful Response |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_post_posts_post_id_get**
> PostResponse get_post_posts_post_id_get(post_id)

Get Post

Get a specific post by ID

### Example


```python
import openapi_client
from openapi_client.models.post_response import PostResponse
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.PostsApi(api_client)
    post_id = 56 # int | 

    try:
        # Get Post
        api_response = api_instance.get_post_posts_post_id_get(post_id)
        print("The response of PostsApi->get_post_posts_post_id_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PostsApi->get_post_posts_post_id_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_id** | **int**|  | 

### Return type

[**PostResponse**](PostResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_posts_posts_get**
> List[PostResponse] list_posts_posts_get(status=status)

List Posts

List all posts, optionally filtered by status
Status options: draft, flagged, approved, published

### Example


```python
import openapi_client
from openapi_client.models.post_response import PostResponse
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.PostsApi(api_client)
    status = 'status_example' # str |  (optional)

    try:
        # List Posts
        api_response = api_instance.list_posts_posts_get(status=status)
        print("The response of PostsApi->list_posts_posts_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PostsApi->list_posts_posts_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **str**|  | [optional] 

### Return type

[**List[PostResponse]**](PostResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **publish_post_posts_post_id_publish_patch**
> PostResponse publish_post_posts_post_id_publish_patch(post_id)

Publish Post

Publish an approved post

### Example


```python
import openapi_client
from openapi_client.models.post_response import PostResponse
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.PostsApi(api_client)
    post_id = 56 # int | 

    try:
        # Publish Post
        api_response = api_instance.publish_post_posts_post_id_publish_patch(post_id)
        print("The response of PostsApi->publish_post_posts_post_id_publish_patch:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PostsApi->publish_post_posts_post_id_publish_patch: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_id** | **int**|  | 

### Return type

[**PostResponse**](PostResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submit_post_posts_post_id_submit_post**
> ModerationResponse submit_post_posts_post_id_submit_post(post_id)

Submit Post

Submit a post for review

### Example


```python
import openapi_client
from openapi_client.models.moderation_response import ModerationResponse
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.PostsApi(api_client)
    post_id = 56 # int | 

    try:
        # Submit Post
        api_response = api_instance.submit_post_posts_post_id_submit_post(post_id)
        print("The response of PostsApi->submit_post_posts_post_id_submit_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PostsApi->submit_post_posts_post_id_submit_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_id** | **int**|  | 

### Return type

[**ModerationResponse**](ModerationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_post_posts_post_id_patch**
> PostResponse update_post_posts_post_id_patch(post_id, post_update)

Update Post

Update a draft post. Only draft posts can be updated.

### Example


```python
import openapi_client
from openapi_client.models.post_response import PostResponse
from openapi_client.models.post_update import PostUpdate
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.PostsApi(api_client)
    post_id = 56 # int | 
    post_update = openapi_client.PostUpdate() # PostUpdate | 

    try:
        # Update Post
        api_response = api_instance.update_post_posts_post_id_patch(post_id, post_update)
        print("The response of PostsApi->update_post_posts_post_id_patch:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PostsApi->update_post_posts_post_id_patch: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_id** | **int**|  | 
 **post_update** | [**PostUpdate**](PostUpdate.md)|  | 

### Return type

[**PostResponse**](PostResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

