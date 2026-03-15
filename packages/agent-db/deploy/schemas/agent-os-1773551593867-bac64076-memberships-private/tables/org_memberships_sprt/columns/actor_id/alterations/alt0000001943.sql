-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/actor_id/alterations/alt0000001943
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/actor_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt 
  ALTER COLUMN actor_id SET NOT NULL;

