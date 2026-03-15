-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/triggers/peoplestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/table


CREATE TRIGGER peoplestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773551593867-bac64076-memberships-public".app_memberships
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps ( );

