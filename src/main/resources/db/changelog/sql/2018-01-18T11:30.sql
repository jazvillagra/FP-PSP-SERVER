CREATE TABLE data_collect.snapshot_tmp (

	  id  bigserial,
	  person_first_name character varying(50) NOT NULL,
	  person_last_name character varying(50) NOT NULL,
	  economic_response jsonb,
	  indicator_response jsonb,
	  personal_response jsonb NOT NULL,
	  state_draft jsonb NOT NULL,
      survey_definition_id bigint NOt NULL,
	  term_cond_id bigint NOT NULL,
	  priv_pol_id bigint NOT NULL,
	  user_id bigint NOT NULL,
      created_at timestamp without time zone NOT NULL,
		
	  CONSTRAINT snapshot_tmp_pkey PRIMARY KEY (id),

	  CONSTRAINT fk_survey_definition_snapshot_tmp FOREIGN KEY (survey_definition_id)
        REFERENCES data_collect.surveys (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,

      CONSTRAINT fk_user_snapshot_tmp FOREIGN KEY (user_id)
        REFERENCES security.users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
	
	  CONSTRAINT fk_termcondpol_term_snapshot_tmp FOREIGN KEY (term_cond_id)
        REFERENCES security.termcondpol (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,

	  CONSTRAINT fk_termcondpol_pol_snapshot_tmp FOREIGN KEY (priv_pol_id)
        REFERENCES security.termcondpol (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION	

);

