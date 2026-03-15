-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/triggers/_00020_app_memberships_update_sprt
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/trigger_fns/app_memberships_update_sprt_tg


CREATE TRIGGER _00020_app_memberships_update_sprt
AFTER UPDATE ON "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773547105079-c748b4c3-memberships-private".app_memberships_update_sprt_tg ( );

