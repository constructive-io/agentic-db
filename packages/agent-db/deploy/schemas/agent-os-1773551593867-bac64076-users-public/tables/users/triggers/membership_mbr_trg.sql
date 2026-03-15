-- Deploy: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/triggers/membership_mbr_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-users-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/trigger_fns/membership_mbr_create


CREATE TRIGGER membership_mbr_trg
AFTER INSERT ON "agent-os-1773551593867-bac64076-users-public".users
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-memberships-private".membership_mbr_create ( );

