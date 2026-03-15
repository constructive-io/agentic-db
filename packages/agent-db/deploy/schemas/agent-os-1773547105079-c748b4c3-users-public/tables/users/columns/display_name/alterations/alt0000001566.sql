-- Deploy: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/columns/display_name/alterations/alt0000001566
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/columns/display_name/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-users-public".users 
  ADD CONSTRAINT users_display_name_chk 
    CHECK (character_length(display_name) <= 256);

