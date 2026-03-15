-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_owner_grants/triggers/app_owner_grants_insert_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_owner_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/trigger_fns/app_owner_grants_apply_tg


CREATE TRIGGER app_owner_grants_insert_trg
BEFORE INSERT ON "agent-os-1773551593867-bac64076-memberships-public".app_owner_grants
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-memberships-private".app_owner_grants_apply_tg ( );

