-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/triggers/_99999_org_memberships_delete_sprt
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/trigger_fns/org_memberships_delete_sprt_tg


CREATE TRIGGER _99999_org_memberships_delete_sprt
AFTER DELETE ON "agent-os-1773551593867-bac64076-memberships-public".org_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-memberships-private".org_memberships_delete_sprt_tg ( );

