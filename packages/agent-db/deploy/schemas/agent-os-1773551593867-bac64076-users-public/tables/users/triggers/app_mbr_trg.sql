-- Deploy: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/triggers/app_mbr_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-users-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/trigger_fns/app_mbr_create


CREATE TRIGGER app_mbr_trg
AFTER INSERT ON "agent-os-1773551593867-bac64076-users-public".users
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-memberships-private".app_mbr_create ( );

