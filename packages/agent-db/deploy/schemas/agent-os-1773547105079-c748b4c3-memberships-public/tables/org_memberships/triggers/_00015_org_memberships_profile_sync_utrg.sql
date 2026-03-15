-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/triggers/_00015_org_memberships_profile_sync_utrg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-private/trigger_fns/org_memberships_profile_sync_tg


CREATE TRIGGER _00015_org_memberships_profile_sync_utrg
BEFORE UPDATE ON "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773547105079-c748b4c3-profiles-private".org_memberships_profile_sync_tg ( );

