-- Deploy: schemas/agent_db_memberships_private/tables/app_memberships_sprt/triggers/_00030_app_memberships_sprt_to_org_memberships_sprt
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/app_memberships_sprt/table
-- requires: schemas/agent_db_memberships_private/trigger_fns/app_memberships_sprt_to_org_memberships_sprt_tg


CREATE TRIGGER _00030_app_memberships_sprt_to_org_memberships_sprt
AFTER INSERT OR DELETE ON "agent_db_memberships_private".app_memberships_sprt
FOR EACH ROW
EXECUTE PROCEDURE "agent_db_memberships_private".app_memberships_sprt_to_org_memberships_sprt_tg ( );

