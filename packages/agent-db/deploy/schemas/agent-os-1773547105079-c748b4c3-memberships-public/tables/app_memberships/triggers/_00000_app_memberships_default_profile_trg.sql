-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/triggers/_00000_app_memberships_default_profile_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-private/trigger_fns/app_memberships_default_profile_tg


CREATE TRIGGER _00000_app_memberships_default_profile_trg
BEFORE INSERT ON "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773547105079-c748b4c3-profiles-private".app_memberships_default_profile_tg ( );

