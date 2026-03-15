-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/columns/from_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/columns/from_type/alterations/alt0000002884


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".context_relations 
  ADD COLUMN from_id uuid;

