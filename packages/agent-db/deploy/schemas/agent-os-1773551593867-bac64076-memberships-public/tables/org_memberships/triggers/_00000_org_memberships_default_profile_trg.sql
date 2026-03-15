-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/triggers/_00000_org_memberships_default_profile_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/trigger_fns/org_memberships_default_profile_tg


CREATE TRIGGER _00000_org_memberships_default_profile_trg
BEFORE INSERT ON "agent-os-1773551593867-bac64076-memberships-public".org_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-profiles-private".org_memberships_default_profile_tg ( );

