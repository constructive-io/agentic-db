-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/is_read/alterations/alt0000003028
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/is_read/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/source_type/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".documents 
    ALTER COLUMN is_read SET DEFAULT false;

