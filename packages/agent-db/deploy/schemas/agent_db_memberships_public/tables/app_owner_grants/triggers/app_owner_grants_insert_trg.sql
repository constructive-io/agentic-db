-- Deploy: schemas/agent_db_memberships_public/tables/app_owner_grants/triggers/app_owner_grants_insert_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_public/tables/app_owner_grants/table
-- requires: schemas/agent_db_memberships_private/trigger_fns/app_owner_grants_apply_tg


CREATE TRIGGER app_owner_grants_insert_trg
BEFORE INSERT ON "agent_db_memberships_public".app_owner_grants
FOR EACH ROW
EXECUTE PROCEDURE "agent_db_memberships_private".app_owner_grants_apply_tg ( );

