-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/columns/title/alterations/alt0000002799
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/columns/title/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/columns/updated_at/alterations/alt0000002798


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".blueprints 
  ALTER COLUMN title SET NOT NULL;

