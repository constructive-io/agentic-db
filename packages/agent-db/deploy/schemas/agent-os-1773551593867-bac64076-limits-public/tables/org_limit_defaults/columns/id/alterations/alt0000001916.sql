-- Deploy: schemas/agent-os-1773551593867-bac64076-limits-public/tables/org_limit_defaults/columns/id/alterations/alt0000001916
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/org_limit_defaults/table
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/org_limit_defaults/columns/id/column



ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".org_limit_defaults 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

