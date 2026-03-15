-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773551593867-bac64076-profiles-public".org_profile_permissions
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

