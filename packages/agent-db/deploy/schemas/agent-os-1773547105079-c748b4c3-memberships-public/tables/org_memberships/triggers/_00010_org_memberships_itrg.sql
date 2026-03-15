-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/triggers/_00010_org_memberships_itrg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/trigger_fns/org_memberships_itg


CREATE TRIGGER _00010_org_memberships_itrg
BEFORE INSERT ON "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773547105079-c748b4c3-memberships-private".org_memberships_itg ( );

