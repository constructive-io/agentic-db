-- Deploy: schemas/agentic_db_permissions_public/tables/app_permission_defaults/triggers/app_permission_defaults_insert_trg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_permissions_public/tables/app_permission_defaults/table


CREATE TRIGGER app_permission_defaults_insert_trg
BEFORE INSERT ON agentic_db_permissions_public.app_permission_defaults
FOR EACH ROW
EXECUTE PROCEDURE utils.ensure_singleton ( );

