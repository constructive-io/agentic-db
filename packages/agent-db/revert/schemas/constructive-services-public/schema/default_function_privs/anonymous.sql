-- Revert: schemas/constructive-services-public/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-services-public" REVOKE ALL ON FUNCTIONS FROM anonymous;


