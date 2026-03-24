-- Deploy: schemas/agentic_db_permissions_public/tables/org_permissions/triggers/org_permissions_insert_trg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_private/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_permissions_private/trigger_fns/org_permissions_bitnum_tg


CREATE TRIGGER org_permissions_insert_trg
BEFORE INSERT ON agentic_db_permissions_public.org_permissions
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_permissions_private.org_permissions_bitnum_tg ( );

