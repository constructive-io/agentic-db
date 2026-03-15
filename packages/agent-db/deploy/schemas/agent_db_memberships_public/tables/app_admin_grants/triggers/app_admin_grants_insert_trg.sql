-- Deploy: schemas/agent_db_memberships_public/tables/app_admin_grants/triggers/app_admin_grants_insert_trg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_public/tables/app_admin_grants/table
-- requires: schemas/agent_db_memberships_private/trigger_fns/app_admin_grants_apply_tg


CREATE TRIGGER app_admin_grants_insert_trg
BEFORE INSERT ON agent_db_memberships_public.app_admin_grants
FOR EACH ROW
EXECUTE PROCEDURE agent_db_memberships_private.app_admin_grants_apply_tg ( );

