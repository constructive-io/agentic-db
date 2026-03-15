-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/documents/columns/is_read/alterations/alt0000001419
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/documents/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/documents/columns/is_read/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/documents/columns/source_type/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".documents 
    ALTER COLUMN is_read SET DEFAULT false;

