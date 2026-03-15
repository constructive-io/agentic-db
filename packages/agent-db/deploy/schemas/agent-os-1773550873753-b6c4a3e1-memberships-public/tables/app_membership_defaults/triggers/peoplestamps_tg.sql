-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_membership_defaults/triggers/peoplestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_membership_defaults/table


CREATE TRIGGER peoplestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773550873753-b6c4a3e1-memberships-public".app_membership_defaults
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps ( );

