-- Deploy: schemas/agentic_db_memberships_public/tables/app_grants/triggers/app_grants_insert_trg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_grants/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_private/trigger_fns/app_grants_apply_tg


CREATE TRIGGER app_grants_insert_trg
BEFORE INSERT ON agentic_db_memberships_public.app_grants
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_memberships_private.app_grants_apply_tg ( );

