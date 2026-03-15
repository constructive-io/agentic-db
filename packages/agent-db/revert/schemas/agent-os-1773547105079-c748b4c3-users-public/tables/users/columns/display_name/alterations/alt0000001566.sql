-- Revert: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/columns/display_name/alterations/alt0000001566


ALTER TABLE "agent-os-1773547105079-c748b4c3-users-public".users 
  DROP CONSTRAINT users_display_name_chk;


