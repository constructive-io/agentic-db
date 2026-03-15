-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/triggers/_00020_app_memberships_insert_sprt
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/trigger_fns/app_memberships_insert_sprt_tg


CREATE TRIGGER _00020_app_memberships_insert_sprt
AFTER INSERT ON "agent-os-1773551593867-bac64076-memberships-public".app_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-memberships-private".app_memberships_insert_sprt_tg ( );

