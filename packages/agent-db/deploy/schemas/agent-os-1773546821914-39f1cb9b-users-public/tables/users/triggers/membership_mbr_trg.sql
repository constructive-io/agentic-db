-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/triggers/membership_mbr_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/trigger_fns/membership_mbr_create


CREATE TRIGGER membership_mbr_trg
AFTER INSERT ON "agent-os-1773546821914-39f1cb9b-users-public".users
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-memberships-private".membership_mbr_create ( );

