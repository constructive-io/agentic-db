-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/columns/main_image_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/columns/search_tsv/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contacts 
  ADD COLUMN main_image_id uuid;

