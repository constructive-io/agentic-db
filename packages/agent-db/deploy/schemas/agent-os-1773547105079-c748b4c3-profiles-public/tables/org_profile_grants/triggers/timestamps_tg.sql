-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_grants/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_grants/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_grants
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

