-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773546821914-39f1cb9b-memberships-public".org_membership_defaults
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

