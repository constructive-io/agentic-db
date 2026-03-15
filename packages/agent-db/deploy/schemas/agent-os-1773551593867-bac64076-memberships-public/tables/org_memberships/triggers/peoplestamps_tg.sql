-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/triggers/peoplestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/table


CREATE TRIGGER peoplestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773551593867-bac64076-memberships-public".org_memberships
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps ( );

