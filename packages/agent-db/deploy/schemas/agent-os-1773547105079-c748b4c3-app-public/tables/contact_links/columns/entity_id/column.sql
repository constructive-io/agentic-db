-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_links/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_links/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/columns/attachable_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contact_links 
  ADD COLUMN entity_id uuid;

