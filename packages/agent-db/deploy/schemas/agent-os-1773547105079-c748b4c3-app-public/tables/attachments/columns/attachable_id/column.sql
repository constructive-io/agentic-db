-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/columns/attachable_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/columns/attachable_type/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".attachments 
  ADD COLUMN attachable_id uuid;

