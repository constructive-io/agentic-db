-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/triggers/membership_mbr_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/trigger_fns/membership_mbr_create


CREATE TRIGGER membership_mbr_trg
AFTER INSERT ON "agent-os-1773550873753-b6c4a3e1-users-public".users
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773550873753-b6c4a3e1-memberships-private".membership_mbr_create ( );

