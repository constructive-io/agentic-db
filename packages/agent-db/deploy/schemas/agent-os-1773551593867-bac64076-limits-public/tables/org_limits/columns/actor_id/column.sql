-- Deploy: schemas/agent-os-1773551593867-bac64076-limits-public/tables/org_limits/columns/actor_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/org_limits/table


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".org_limits 
  ADD COLUMN actor_id uuid;

