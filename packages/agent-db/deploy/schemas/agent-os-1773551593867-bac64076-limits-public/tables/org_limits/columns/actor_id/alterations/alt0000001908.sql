-- Deploy: schemas/agent-os-1773551593867-bac64076-limits-public/tables/org_limits/columns/actor_id/alterations/alt0000001908
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/org_limits/table
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/org_limits/columns/actor_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".org_limits 
  ALTER COLUMN actor_id SET NOT NULL;

