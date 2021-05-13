# frozen_string_literal: true

# This class uses the SDK constants name reference.
class Constants
  API_NAME = 'api_name'

  RESPONSECODE_OK = 200

  FILE_ERROR = 'FILE ERROR'

  FILE_DOES_NOT_EXISTS = 'file does not exists'

  JSON_FILE_EXTENSION = '.json'

  RESPONSECODE_CREATED = 201

  RESPONSECODE_ACCEPTED = 202

  RESPONSECODE_NO_CONTENT = 204

  RESPONSECODE_MOVED_PERMANENTLY = 301

  RESPONSECODE_MOVED_TEMPORARILY = 302

  RESPONSECODE_NOT_MODIFIED = 304

  RESPONSECODE_BAD_REQUEST = 400

  RESPONSECODE_AUTHORIZATION_ERROR = 401

  RESPONSECODE_FORBIDDEN = 403

  RESPONSECODE_NOT_FOUND = 404

  RESPONSECODE_METHOD_NOT_ALLOWED = 405

  RESPONSECODE_REQUEST_ENTITY_TOO_LARGE = 413

  RESPONSECODE_UNSUPPORTED_MEDIA_TYPE = 415

  RESPONSECODE_TOO_MANY_REQUEST = 429

  RESPONSECODE_INTERNAL_SERVER_ERROR = 500

  RESPONSECODE_INVALID_INPUT = 0

  REQUEST_METHOD_GET = 'GET'

  REQUEST_METHOD_POST = 'POST'

  REQUEST_METHOD_PUT = 'PUT'

  REQUEST_METHOD_DELETE = 'DELETE'

  REQUEST_METHOD_PATCH = 'PATCH'

  GRANT_TYPE = 'grant_type'

  GRANT_TYPE_AUTH_CODE = 'authorization_code'

  ACCESS_TOKEN = 'access_token'

  EXPIRES_IN = 'expires_in'

  HREF = 'href'

  EXPIRES_IN_SEC = 'expires_in_sec'

  REFRESH_TOKEN = 'refresh_token'

  CLIENT_ID = 'client_id'

  CLIENT_SECRET = 'client_secret'

  REDIRECT_URI = 'redirect_uri'

  REDIRECT_URL = 'redirect_url'

  URL = 'URL'

  HEADERS = 'headers'

  PARAMS = 'PARAMS'

  OAUTH_HEADER_PREFIX = 'Zoho-oauthtoken '

  AUTHORIZATION = 'Authorization'

  CODE = 'code'

  STATUS = 'status'

  MESSAGE = 'message'

  HTTP = 'http'

  CONTENT_API_URL = 'content.zohoapis.com'

  INVALID_URL_ERROR = 'Invalid URI Error'

  ZOHO_SDK = 'X-ZOHO-SDK'

  SDK_VERSION = '2.1.0'

  SET_TO_CONTENT_TYPE = ['/crm/bulk/v2/read', '/crm/bulk/v2/write']

  IS_GENERATE_REQUEST_BODY =[REQUEST_METHOD_POST,REQUEST_METHOD_PUT,REQUEST_METHOD_PATCH]

  REQUIRED_IN_UPDATE = 'required_in_update'

  PHOTO = "photo"
    
  CRM = "crm"
  
  API_VERSION = "v2"

  PHOTO_SUPPORTED_MODULES = ["leads", "contacts", "accounts", "products", "vendors"]

  PARAMETER_NULL_ERROR = 'NULL PARAMETER ERROR'

  HEADER_NULL_ERROR = 'NULL HEADER ERROR'

  PARAM_NAME_NULL_ERROR = 'NULL PARAM NAME ERROR'

  HEADER_NAME_NULL_ERROR = 'NULL HEADER NAME ERROR'

  PARAM_NAME_NULL_ERROR_MESSAGE = 'Param Name MUST NOT be null'

  AUTO_REFRESH_FIELDS_ERROR_MESSAGE = 'autoRefreshFields MUST NOT be null.'

  RESOURCE_PATH_ERROR_MESSAGE = 'Resource Path MUST NOT be null/empty.'

  HEADER_NAME_NULL_ERROR_MESSAGE = 'Header Name MUST NOT be null'

  NULL_VALUE = 'null'

  HEADER_OR_PARAM_NAME = 'HEADER OR PARAM'

  UNSUPPORTED_IN_API = 'API UNSUPPORTED OPERATION'

  UNSUPPORTED_IN_API_MESSAGE = 'Operation is not supported by API'

  NULL_VALUE_ERROR_MESSAGE = ' MUST NOT be null'

  PARAM_INSTANCE_NULL_ERROR = 'Param<T> Instance MUST NOT be null'

  HEADER_INSTANCE_NULL_ERROR = 'Header<T> Instance MUST NOT be null'

  SDK_UNINITIALIZATION_ERROR = 'SDK UNINITIALIZED ERROR'

  SDK_UNINITIALIZATION_MESSAGE = 'SDK is uninitialized'

  MYSQL_HOST = 'localhost'

  REFRESH_TOKEN_MESSAGE = 'Access Token has expired. Hence refreshing.'

  MYSQL_DATABASE_NAME = 'zohooauth'

  MYSQL_USER_NAME = 'root'

  MYSQL_PORT_NUMBER = '3306'

  UNDERSCORE = '_'

  RELATED_LISTS = 'Related_Lists'

  USER_MAIL = 'user_mail'

  EXPIRY_TIME = 'expiry_time'

  USER_MAIL_NULL_ERROR = 'USER MAIL NULL ERROR'

  USER_MAIL_NULL_ERROR_MESSAGE = 'User Mail MUST NOT be null. Use setUserMail() to set value.'

  SAVE_TOKEN_ERROR = 'Exception in saving tokens'

  GET_TOKEN_ERROR = 'Exception in getting access token'

  GET_TOKEN_DB_ERROR = 'Exception in get_token - DBStore:'

  GET_TOKENS_DB_ERROR = 'Exception in get_tokens - DBStore:'

  DELETE_TOKEN_DB_ERROR = 'Exception in delete_token - DBStore:'

  DELETE_TOKENS_DB_ERROR = 'Exception in delete_tokens - DBStore:'

  SAVE_TOKEN_DB_ERROR = 'Exception in save_token - DBStore:'

  GET_TOKEN_FILE_ERROR = 'Exception in get_token - FileStore:'

  REFRESH_SINGLE_MODULE_FIELDS_ERROR = 'Exception in refreshing fields of module : '

  REFRESH_ALL_MODULE_FIELDS_ERROR = 'Exception in refreshing fields of all modules : '

  FILEBODYWRAPPER = 'FileBodyWrapper'

  ACCOUNTS = 'Accounts'

  FORMULA = 'formula'

  CALLS = 'Calls'

  SKIP_MANDATORY = 'skip_mandatory'

  CALL_DURATION = 'Call_Duration'

  EXCEPTION = 'exception'

  SAVE_TOKEN_FILE_ERROR = 'Exception in save_token - FileStore:'

  SAVE_TOKENS_FILE_ERROR = 'Exception in save_tokens - FileStore:'

  DELETE_TOKEN_FILE_ERROR = 'Exception in delete_token - FileStore:'

  DELETE_TOKENS_FILE_ERROR = 'Exception in delete_tokens - FileStore:'

  SDK_LOGGER_INITIALIZE = 'Exception in Logger Initialization'

  DELETE_MODULE_FROM_FIELDFILE_ERROR = 'Exception in deleting module from Fields file'

  DELETE_FIELD_FILE_ERROR = 'Exception in deleting Current User Fields file'

  DELETE_FIELD_FILES_ERROR = 'Exception in deleting all Fields files'

  FIELDS_LAST_MODIFIED_TIME = 'FIELDS-LAST-MODIFIED-TIME'

  MODULES_TO_SKIP = ['Activities']

  ACTIVITIES = 'Activities'

  GIVEN_VALUE = "given-value"

  PHOTO_UPLOAD_ERROR_MESSAGE  = "The given module is not supported in API.";
    
  INVALID_MODULE  = "INVALID_MODULE"

  INVENTORY_MODULES = %w[invoices sales_orders purchase_orders quotes]

  KEYS_TO_SKIP = %w[Created_Time Modified_Time Created_By Modified_By Tag]

  ATTACHMENT_ID = 'attachment_id'

  FILE_ID = 'file_id'

  TOKEN_STORE = 'TOKEN_STORE'

  GRANT_TOKEN = 'grant_token'

  INPUT_ERROR = 'INPUT_ERROR'

  TOKEN = 'token'

  TYPE = 'type'

  ID = 'id'

  REQUEST_CATEGORY_READ = 'READ'

  REQUEST_CATEGORY_CREATE = 'CREATE'

  REQUEST_CATEGORY_UPDATE = 'UPDATE'

  MODULEPACKAGENAME = 'modulePackageName'

  INITIALIZATION_SUCCESSFUL = 'Initialization successful'

  EXCEPTION_JSONDETAILS = 'Exception in loading JSONDetails :'

  INITIALIZATION_SWITCHED = 'Initialization switched '

  API_EXCEPTION = 'API_EXCEPTION'

  SET_API_URL_EXCEPTION = 'Exception in setting API URL : '

  AUTHENTICATION_EXCEPTION = 'Exception in authenticating current request : '

  FORM_REQUEST_EXCEPTION = 'Exception in forming request body :'

  API_CALL_EXCEPTION = 'Exception in current API call execution : '

  EXCEPTION_IS_KEY_MODIFIED = 'Exception in calling isKeyModified : '

  GIVEN_LENGTH = 'given-length'

  FOR_EMAIL_ID = 'for Email Id : '

  IN_ENVIRONMENT = ' in Environment : '

  MODULEDETAILS = 'moduleDetails'

  EXPECTED_TOKEN_TYPES = 'REFRESH, GRANT'

  ARRAY = 'Array'

  HASH = 'Hash'

  CASES = 'cases'

  CANT_DISCLOSE = " ## can't disclose ## "

  APPLICATION_FORM_URLENCODED = 'application/x-www-form-urlencoded'

  MULTIPART_FORM_DATA = 'multipart/form-data'

  INVALID_CLIENT_ERROR = 'INVALID CLIENT ERROR'

  ERROR_KEY = 'error'

  ERROR_HASH_FIELD = 'field'

  ERROR_HASH_EXPECTED_TYPE = 'expected_type'

  ERROR_HASH_CLASS = 'class'

  CONTENT_TYPE = 'content-type'

  INSTANCE_NUMBER = 'instance-number'

  ERROR_HASH_MEMBER = 'member'

  NAME = 'name'

  DATA_TYPE = { 'Map' => 'Hash','String'=>'String' ,'List' => 'Array', 'Boolean' => 'boolean', 'Integer' => 'Integer', 'Long' => 'Integer', 'Hash' => 'Hash', 'HashMap' => 'Hash', 'Double' => 'Float','Float' => 'Float','DateTime'=>'DateTime','Date'=>'Date' }

  DATA_TYPE_ERROR = 'DATA TYPE ERROR'

  TYPE_ERROR = 'type-error'

  USER_SIGNATURE_ERROR = 'USERSIGNATURE ERROR'

  USER_EMAIL_REGEX_ERROR = 'UserSignature Email Regex Mismatch'

  VALUES = 'values'

  ACCEPTED_VALUES = 'accepted-values'

  UNACCEPTED_VALUES_ERROR = 'UNACCEPTED VALUES ERROR'

  MIN_LENGTH = 'min-length'

  MAX_LENGTH = 'max-length'

  ERROR_HASH_MAXIMUM_LENGTH = 'maximum-length'

  MAXIMUM_LENGTH_ERROR = 'MAXIMUM LENGTH ERROR'

  ERROR_HASH_MINIMUM_LENGTH = 'minimum-length'

  MINIMUM_LENGTH_ERROR = 'MINIMUM LENGTH ERROR'

  REGEX = 'regex'

  REGEX_MISMATCH_ERROR = 'REGEX MISMATCH ERROR'

  UNIQUE = 'unique'

  UNIQUE_KEY_ERROR = 'UNIQUE KEY ERROR'

  FIRST_INDEX = 'first-index'

  NEXT_INDEX = 'next-index'

  INDEX = 'index'

  GIVEN_TYPE = 'given-type'

  INTEGER = 'Integer'

  LONG = 'Long'

  DOUBLE = 'Double'

  FLOAT = 'Float'

  BOOLEAN = 'Boolean'

  OBJECT = 'Object'

  STRING = 'String'

  DATE_NAMESPACE = 'Date'

  DATETIME_NAMESPACE = 'DateTime'

  FILE_NAMESPACE = 'com.zoho.crm.api.util.StreamWrapper'

  DOUBLE_COLON = '::'

  DOT = '.'

  AT = '@'

  RESOURCES = 'resources'

  PRIMARY = 'primary'

  STREAM_WRAPPER_CLASS_PATH = 'com.zoho.crm.api.util.StreamWrapper'

  CONTENT_DISPOSITION = 'content-disposition'

  PACKAGE_PREFIX = 'com.zoho.crm.api.'

  INTERFACE = 'interface'

  CLASSES = 'classes'

  READ_ONLY = 'read-only'

  PRODUCT_DETAILS = 'Product_Details'

  PRICING_DETAILS = 'Pricing_Details'

  COMMENTS = 'Comments'

  COMMENTS_NAMESPACE = 'com.zoho.crm.api.record.Comment'

  SOLUTIONS = 'solutions'

  IS_KEY_MODIFIED = 'is_key_modified'

  SUBFORM = 'subform'

  LOOKUP = 'lookup'

  REQUIRED = 'required'

  PRIMARY_KEY_ERROR = 'Value missing or Nil for required key(s) : '

  MANDATORY_KEY_ERROR = 'missing or Nil Value for mandatory key : '

  MANDATORY_VALUE_ERROR = 'MANDATORY VALUE MISSING OR NIL ERROR'

  LIST_NAMESPACE = 'List'

  PRICE_BOOKS = 'Price_Books'

  LINE_TAX = '$line_tax'

  RECURRING_ACTIVITY_NAMESPACE = 'com.zoho.crm.api.record.RecurringActivity'

  REMINDER_NAMESPACE = 'com.zoho.crm.api.record.Reminder'

  REMINDAT_NAMESPACE = 'com.zoho.crm.api.record.RemindAt'

  FIELD_FILE_NAMESPACE = 'com.zoho.crm.api.record.FileDetails'

  INVENTORY_LINE_ITEMS = 'com.zoho.crm.api.record.InventoryLineItems'

  PARTICIPANT_API_NAME = 'Participants'

  PRICINGDETAILS = 'com.zoho.crm.api.record.PricingDetails'

  PARTICIPANTS = 'com.zoho.crm.api.record.Participants'

  LINE_TAX_NAMESPACE = 'com.zoho.crm.api.record.LineTax'

  LAYOUT = 'Layout'

  LAYOUT_NAMESPACE = 'com.zoho.crm.api.layouts.Layout'

  EVENTS = 'Events'

  MAP_NAMESPACE = 'Map'

  HASH_MAP_NAMESPACE = 'HashMap'

  STRUCTURE_NAME = 'structure_name'

  KEYS = 'keys'

  RECORD_NAMESPACE = 'com.zoho.crm.api.record.Record'

  USER_NAMESPACE = 'com.zoho.crm.api.users.User'

  MODULE_NAMESPACE = 'com.zoho.crm.api.modules.Module'

  CHOICE_NAMESPACE = 'com.zoho.crm.api.util.Choice'

  JSON_DETAILS_FILE_PATH = 'resources/JSONDetails.json'

  DETAILS = 'details'

  KEY_VALUES = 'key_values'

  KEY_MODIFIED = 'key_modified'

  LOGFILE_NAME = 'SDKLogs.log'

  INITIALIZATION_ERROR = 'INITIALIZATION ERROR'

  REQUEST_PROXY_ERROR = 'REQUEST PROXY ERROR'

  HOST_ERROR_MESSAGE = 'Host MUST NOT be null.'

  PORT_ERROR_MESSAGE = 'Port MUST NOT be null.'
	
	USERSIGNATURE_ERROR_MESSAGE = "UserSignature MUST NOT be null."
	
	ENVIRONMENT_ERROR_MESSAGE = "Environment MUST NOT be null."
	
	SDK_CONFIG_ERROR_MESSAGE = "sdkConfig MUST NOT be null."

  TOKEN_ERROR_MESSAGE = "Token MUST NOT be null."
	
	STORE_ERROR_MESSAGE = "Store MUST NOT be null."

  INITIALIZATION_EXCEPTION = 'Exception in initialization'

  SWITCH_USER_ERROR = "SWITCH USER ERROR"

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  EMAIL = 'email'

  SE_MODULE = 'se_module'

  USER_ERROR = 'USER ERROR'

  MODULES = 'modules'

  MODULE = 'module'

  DELETE = 'delete'

  NOTES = 'Notes'

  CONSENT_LOOKUP = "consent_lookup"

  ATTACHMENTS = '$attachments'

  ATTACHMENTS_NAMESPACE = 'com.zoho.crm.api.attachments.Attachment'

  PICKLIST = 'picklist'

  CONSENT_NAMESPACE = 'com.zoho.crm.api.record.Consent'
end
