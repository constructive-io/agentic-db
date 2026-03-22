-- Deploy: schemas/agentic_db_memberships_public/tables/app_owner_grants/triggers/app_owner_grants_insert_trg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_owner_grants/table
-- requires: schemas/agentic_db_memberships_private/trigger_fns/app_owner_grants_apply_tg


CREATE TRIGGER app_owner_grants_insert_trg
BEFORE INSERT ON agentic_db_memberships_public.app_owner_grants
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_memberships_private.app_owner_grants_apply_tg ( );

