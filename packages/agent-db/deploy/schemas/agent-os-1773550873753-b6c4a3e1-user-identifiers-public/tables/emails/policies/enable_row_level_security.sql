-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".emails 
  ENABLE ROW LEVEL SECURITY;

