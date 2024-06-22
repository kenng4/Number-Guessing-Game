--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    games_played integer,
    best_game integer,
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: guesses_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guesses_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guesses_game_id_seq OWNER TO freecodecamp;

--
-- Name: guesses_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guesses_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.guesses_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (NULL, NULL, 1, 6, 8);
INSERT INTO public.games VALUES (NULL, NULL, 2, 6, 3);
INSERT INTO public.games VALUES (NULL, NULL, 3, 6, 3);
INSERT INTO public.games VALUES (NULL, NULL, 4, 6, 1);
INSERT INTO public.games VALUES (NULL, NULL, 5, 6, 1);
INSERT INTO public.games VALUES (NULL, NULL, 6, 7, 1);
INSERT INTO public.games VALUES (NULL, NULL, 7, 6, 1);
INSERT INTO public.games VALUES (NULL, NULL, 8, 8, 345);
INSERT INTO public.games VALUES (NULL, NULL, 9, 8, 657);
INSERT INTO public.games VALUES (NULL, NULL, 10, 9, 716);
INSERT INTO public.games VALUES (NULL, NULL, 11, 9, 662);
INSERT INTO public.games VALUES (NULL, NULL, 12, 8, 928);
INSERT INTO public.games VALUES (NULL, NULL, 13, 8, 1);
INSERT INTO public.games VALUES (NULL, NULL, 14, 8, 976);
INSERT INTO public.games VALUES (NULL, NULL, 15, 7, 1);
INSERT INTO public.games VALUES (NULL, NULL, 16, 10, 13);
INSERT INTO public.games VALUES (NULL, NULL, 17, 11, 12);
INSERT INTO public.games VALUES (NULL, NULL, 18, 12, 95);
INSERT INTO public.games VALUES (NULL, NULL, 19, 12, 529);
INSERT INTO public.games VALUES (NULL, NULL, 20, 13, 536);
INSERT INTO public.games VALUES (NULL, NULL, 21, 13, 51);
INSERT INTO public.games VALUES (NULL, NULL, 22, 12, 996);
INSERT INTO public.games VALUES (NULL, NULL, 23, 12, 484);
INSERT INTO public.games VALUES (NULL, NULL, 24, 12, 529);
INSERT INTO public.games VALUES (NULL, NULL, 25, 7, 12);
INSERT INTO public.games VALUES (NULL, NULL, 26, 15, 623);
INSERT INTO public.games VALUES (NULL, NULL, 27, 15, 568);
INSERT INTO public.games VALUES (NULL, NULL, 28, 16, 333);
INSERT INTO public.games VALUES (NULL, NULL, 29, 16, 236);
INSERT INTO public.games VALUES (NULL, NULL, 30, 15, 728);
INSERT INTO public.games VALUES (NULL, NULL, 31, 15, 977);
INSERT INTO public.games VALUES (NULL, NULL, 32, 15, 252);
INSERT INTO public.games VALUES (NULL, NULL, 33, 17, 693);
INSERT INTO public.games VALUES (NULL, NULL, 34, 17, 255);
INSERT INTO public.games VALUES (NULL, NULL, 35, 18, 526);
INSERT INTO public.games VALUES (NULL, NULL, 36, 18, 241);
INSERT INTO public.games VALUES (NULL, NULL, 37, 17, 492);
INSERT INTO public.games VALUES (NULL, NULL, 38, 17, 140);
INSERT INTO public.games VALUES (NULL, NULL, 39, 17, 355);
INSERT INTO public.games VALUES (NULL, NULL, 40, 7, 10);
INSERT INTO public.games VALUES (NULL, NULL, 41, 19, 758);
INSERT INTO public.games VALUES (NULL, NULL, 42, 19, 242);
INSERT INTO public.games VALUES (NULL, NULL, 43, 20, 630);
INSERT INTO public.games VALUES (NULL, NULL, 44, 20, 931);
INSERT INTO public.games VALUES (NULL, NULL, 45, 19, 459);
INSERT INTO public.games VALUES (NULL, NULL, 46, 19, 729);
INSERT INTO public.games VALUES (NULL, NULL, 47, 19, 991);
INSERT INTO public.games VALUES (NULL, NULL, 48, 7, 16);
INSERT INTO public.games VALUES (NULL, NULL, 49, 21, 117);
INSERT INTO public.games VALUES (NULL, NULL, 50, 21, 976);
INSERT INTO public.games VALUES (NULL, NULL, 51, 22, 708);
INSERT INTO public.games VALUES (NULL, NULL, 52, 22, 27);
INSERT INTO public.games VALUES (NULL, NULL, 53, 21, 177);
INSERT INTO public.games VALUES (NULL, NULL, 54, 21, 559);
INSERT INTO public.games VALUES (NULL, NULL, 55, 21, 94);
INSERT INTO public.games VALUES (NULL, NULL, 56, 23, 851);
INSERT INTO public.games VALUES (NULL, NULL, 57, 23, 976);
INSERT INTO public.games VALUES (NULL, NULL, 58, 24, 534);
INSERT INTO public.games VALUES (NULL, NULL, 59, 24, 180);
INSERT INTO public.games VALUES (NULL, NULL, 60, 23, 397);
INSERT INTO public.games VALUES (NULL, NULL, 61, 23, 623);
INSERT INTO public.games VALUES (NULL, NULL, 62, 23, 53);
INSERT INTO public.games VALUES (NULL, NULL, 63, 25, 695);
INSERT INTO public.games VALUES (NULL, NULL, 64, 25, 345);
INSERT INTO public.games VALUES (NULL, NULL, 65, 26, 385);
INSERT INTO public.games VALUES (NULL, NULL, 66, 26, 795);
INSERT INTO public.games VALUES (NULL, NULL, 67, 25, 387);
INSERT INTO public.games VALUES (NULL, NULL, 68, 25, 606);
INSERT INTO public.games VALUES (NULL, NULL, 69, 25, 842);
INSERT INTO public.games VALUES (NULL, NULL, 70, 27, 979);
INSERT INTO public.games VALUES (NULL, NULL, 71, 27, 568);
INSERT INTO public.games VALUES (NULL, NULL, 72, 28, 118);
INSERT INTO public.games VALUES (NULL, NULL, 73, 28, 37);
INSERT INTO public.games VALUES (NULL, NULL, 74, 27, 727);
INSERT INTO public.games VALUES (NULL, NULL, 75, 27, 109);
INSERT INTO public.games VALUES (NULL, NULL, 76, 27, 475);
INSERT INTO public.games VALUES (NULL, NULL, 77, 29, 772);
INSERT INTO public.games VALUES (NULL, NULL, 78, 29, 350);
INSERT INTO public.games VALUES (NULL, NULL, 79, 30, 789);
INSERT INTO public.games VALUES (NULL, NULL, 80, 30, 499);
INSERT INTO public.games VALUES (NULL, NULL, 81, 29, 31);
INSERT INTO public.games VALUES (NULL, NULL, 82, 29, 74);
INSERT INTO public.games VALUES (NULL, NULL, 83, 29, 198);
INSERT INTO public.games VALUES (NULL, NULL, 84, 31, 164);
INSERT INTO public.games VALUES (NULL, NULL, 85, 31, 372);
INSERT INTO public.games VALUES (NULL, NULL, 86, 32, 977);
INSERT INTO public.games VALUES (NULL, NULL, 87, 32, 920);
INSERT INTO public.games VALUES (NULL, NULL, 88, 31, 898);
INSERT INTO public.games VALUES (NULL, NULL, 89, 31, 276);
INSERT INTO public.games VALUES (NULL, NULL, 90, 31, 51);
INSERT INTO public.games VALUES (NULL, NULL, 91, 33, 426);
INSERT INTO public.games VALUES (NULL, NULL, 92, 33, 661);
INSERT INTO public.games VALUES (NULL, NULL, 93, 34, 967);
INSERT INTO public.games VALUES (NULL, NULL, 94, 34, 165);
INSERT INTO public.games VALUES (NULL, NULL, 95, 33, 392);
INSERT INTO public.games VALUES (NULL, NULL, 96, 33, 777);
INSERT INTO public.games VALUES (NULL, NULL, 97, 33, 36);
INSERT INTO public.games VALUES (NULL, NULL, 98, 35, 38);
INSERT INTO public.games VALUES (NULL, NULL, 99, 35, 780);
INSERT INTO public.games VALUES (NULL, NULL, 100, 36, 420);
INSERT INTO public.games VALUES (NULL, NULL, 101, 36, 262);
INSERT INTO public.games VALUES (NULL, NULL, 102, 35, 710);
INSERT INTO public.games VALUES (NULL, NULL, 103, 35, 207);
INSERT INTO public.games VALUES (NULL, NULL, 104, 35, 78);
INSERT INTO public.games VALUES (NULL, NULL, 105, 37, 516);
INSERT INTO public.games VALUES (NULL, NULL, 106, 37, 852);
INSERT INTO public.games VALUES (NULL, NULL, 107, 38, 675);
INSERT INTO public.games VALUES (NULL, NULL, 108, 38, 998);
INSERT INTO public.games VALUES (NULL, NULL, 109, 37, 962);
INSERT INTO public.games VALUES (NULL, NULL, 110, 37, 320);
INSERT INTO public.games VALUES (NULL, NULL, 111, 37, 458);
INSERT INTO public.games VALUES (NULL, NULL, 112, 39, 4);
INSERT INTO public.games VALUES (NULL, NULL, 113, 39, 565);
INSERT INTO public.games VALUES (NULL, NULL, 114, 40, 511);
INSERT INTO public.games VALUES (NULL, NULL, 115, 40, 628);
INSERT INTO public.games VALUES (NULL, NULL, 116, 39, 998);
INSERT INTO public.games VALUES (NULL, NULL, 117, 39, 565);
INSERT INTO public.games VALUES (NULL, NULL, 118, 39, 718);
INSERT INTO public.games VALUES (NULL, NULL, 119, 41, 456);
INSERT INTO public.games VALUES (NULL, NULL, 120, 41, 579);
INSERT INTO public.games VALUES (NULL, NULL, 121, 42, 367);
INSERT INTO public.games VALUES (NULL, NULL, 122, 42, 923);
INSERT INTO public.games VALUES (NULL, NULL, 123, 41, 814);
INSERT INTO public.games VALUES (NULL, NULL, 124, 41, 93);
INSERT INTO public.games VALUES (NULL, NULL, 125, 41, 192);
INSERT INTO public.games VALUES (NULL, NULL, 126, 7, 18);
INSERT INTO public.games VALUES (NULL, NULL, 127, 43, 118);
INSERT INTO public.games VALUES (NULL, NULL, 128, 43, 833);
INSERT INTO public.games VALUES (NULL, NULL, 129, 44, 970);
INSERT INTO public.games VALUES (NULL, NULL, 130, 44, 60);
INSERT INTO public.games VALUES (NULL, NULL, 131, 43, 125);
INSERT INTO public.games VALUES (NULL, NULL, 132, 43, 519);
INSERT INTO public.games VALUES (NULL, NULL, 133, 43, 700);
INSERT INTO public.games VALUES (NULL, NULL, 134, 45, 81);
INSERT INTO public.games VALUES (NULL, NULL, 135, 45, 168);
INSERT INTO public.games VALUES (NULL, NULL, 136, 46, 827);
INSERT INTO public.games VALUES (NULL, NULL, 137, 46, 568);
INSERT INTO public.games VALUES (NULL, NULL, 138, 45, 387);
INSERT INTO public.games VALUES (NULL, NULL, 139, 45, 254);
INSERT INTO public.games VALUES (NULL, NULL, 140, 45, 146);
INSERT INTO public.games VALUES (NULL, NULL, 141, 7, 15);
INSERT INTO public.games VALUES (NULL, NULL, 142, 47, 1);
INSERT INTO public.games VALUES (NULL, NULL, 143, 47, 535);
INSERT INTO public.games VALUES (NULL, NULL, 144, 48, 1);
INSERT INTO public.games VALUES (NULL, NULL, 145, 48, 495);
INSERT INTO public.games VALUES (NULL, NULL, 146, 47, 361);
INSERT INTO public.games VALUES (NULL, NULL, 147, 47, 612);
INSERT INTO public.games VALUES (NULL, NULL, 148, 47, 903);
INSERT INTO public.games VALUES (NULL, NULL, 149, 49, 1);
INSERT INTO public.games VALUES (NULL, NULL, 150, 49, 68);
INSERT INTO public.games VALUES (NULL, NULL, 151, 50, 1);
INSERT INTO public.games VALUES (NULL, NULL, 152, 50, 939);
INSERT INTO public.games VALUES (NULL, NULL, 153, 49, 351);
INSERT INTO public.games VALUES (NULL, NULL, 154, 49, 641);
INSERT INTO public.games VALUES (NULL, NULL, 155, 49, 971);
INSERT INTO public.games VALUES (NULL, NULL, 156, 7, 9);
INSERT INTO public.games VALUES (NULL, NULL, 157, 51, 569);
INSERT INTO public.games VALUES (NULL, NULL, 158, 51, 96);
INSERT INTO public.games VALUES (NULL, NULL, 159, 52, 890);
INSERT INTO public.games VALUES (NULL, NULL, 160, 52, 259);
INSERT INTO public.games VALUES (NULL, NULL, 161, 51, 287);
INSERT INTO public.games VALUES (NULL, NULL, 162, 51, 674);
INSERT INTO public.games VALUES (NULL, NULL, 163, 51, 424);
INSERT INTO public.games VALUES (NULL, NULL, 164, 53, 10);
INSERT INTO public.games VALUES (NULL, NULL, 165, 53, 458);
INSERT INTO public.games VALUES (NULL, NULL, 166, 54, 668);
INSERT INTO public.games VALUES (NULL, NULL, 167, 54, 151);
INSERT INTO public.games VALUES (NULL, NULL, 168, 53, 456);
INSERT INTO public.games VALUES (NULL, NULL, 169, 53, 502);
INSERT INTO public.games VALUES (NULL, NULL, 170, 53, 995);
INSERT INTO public.games VALUES (NULL, NULL, 171, 55, 860);
INSERT INTO public.games VALUES (NULL, NULL, 172, 55, 107);
INSERT INTO public.games VALUES (NULL, NULL, 173, 56, 876);
INSERT INTO public.games VALUES (NULL, NULL, 174, 56, 798);
INSERT INTO public.games VALUES (NULL, NULL, 175, 55, 746);
INSERT INTO public.games VALUES (NULL, NULL, 176, 55, 609);
INSERT INTO public.games VALUES (NULL, NULL, 177, 55, 831);
INSERT INTO public.games VALUES (NULL, NULL, 178, 57, 742);
INSERT INTO public.games VALUES (NULL, NULL, 179, 57, 292);
INSERT INTO public.games VALUES (NULL, NULL, 180, 58, 833);
INSERT INTO public.games VALUES (NULL, NULL, 181, 58, 928);
INSERT INTO public.games VALUES (NULL, NULL, 182, 57, 818);
INSERT INTO public.games VALUES (NULL, NULL, 183, 57, 717);
INSERT INTO public.games VALUES (NULL, NULL, 184, 57, 852);
INSERT INTO public.games VALUES (NULL, NULL, 185, 59, 827);
INSERT INTO public.games VALUES (NULL, NULL, 186, 59, 739);
INSERT INTO public.games VALUES (NULL, NULL, 187, 60, 604);
INSERT INTO public.games VALUES (NULL, NULL, 188, 60, 173);
INSERT INTO public.games VALUES (NULL, NULL, 189, 59, 763);
INSERT INTO public.games VALUES (NULL, NULL, 190, 59, 406);
INSERT INTO public.games VALUES (NULL, NULL, 191, 59, 65);
INSERT INTO public.games VALUES (NULL, NULL, 192, 61, 259);
INSERT INTO public.games VALUES (NULL, NULL, 193, 61, 871);
INSERT INTO public.games VALUES (NULL, NULL, 194, 62, 31);
INSERT INTO public.games VALUES (NULL, NULL, 195, 62, 49);
INSERT INTO public.games VALUES (NULL, NULL, 196, 61, 434);
INSERT INTO public.games VALUES (NULL, NULL, 197, 61, 68);
INSERT INTO public.games VALUES (NULL, NULL, 198, 61, 259);
INSERT INTO public.games VALUES (NULL, NULL, 199, 63, 616);
INSERT INTO public.games VALUES (NULL, NULL, 200, 63, 892);
INSERT INTO public.games VALUES (NULL, NULL, 201, 64, 808);
INSERT INTO public.games VALUES (NULL, NULL, 202, 64, 275);
INSERT INTO public.games VALUES (NULL, NULL, 203, 63, 895);
INSERT INTO public.games VALUES (NULL, NULL, 204, 63, 128);
INSERT INTO public.games VALUES (NULL, NULL, 205, 63, 727);
INSERT INTO public.games VALUES (NULL, NULL, 206, 65, 441);
INSERT INTO public.games VALUES (NULL, NULL, 207, 65, 555);
INSERT INTO public.games VALUES (NULL, NULL, 208, 66, 68);
INSERT INTO public.games VALUES (NULL, NULL, 209, 66, 22);
INSERT INTO public.games VALUES (NULL, NULL, 210, 65, 88);
INSERT INTO public.games VALUES (NULL, NULL, 211, 65, 142);
INSERT INTO public.games VALUES (NULL, NULL, 212, 65, 615);
INSERT INTO public.games VALUES (NULL, NULL, 213, 67, 562);
INSERT INTO public.games VALUES (NULL, NULL, 214, 67, 213);
INSERT INTO public.games VALUES (NULL, NULL, 215, 68, 66);
INSERT INTO public.games VALUES (NULL, NULL, 216, 68, 78);
INSERT INTO public.games VALUES (NULL, NULL, 217, 67, 423);
INSERT INTO public.games VALUES (NULL, NULL, 218, 67, 517);
INSERT INTO public.games VALUES (NULL, NULL, 219, 67, 503);
INSERT INTO public.games VALUES (NULL, NULL, 220, 69, 612);
INSERT INTO public.games VALUES (NULL, NULL, 221, 69, 292);
INSERT INTO public.games VALUES (NULL, NULL, 222, 70, 204);
INSERT INTO public.games VALUES (NULL, NULL, 223, 70, 637);
INSERT INTO public.games VALUES (NULL, NULL, 224, 69, 175);
INSERT INTO public.games VALUES (NULL, NULL, 225, 69, 998);
INSERT INTO public.games VALUES (NULL, NULL, 226, 69, 663);
INSERT INTO public.games VALUES (NULL, NULL, 227, 71, 639);
INSERT INTO public.games VALUES (NULL, NULL, 228, 71, 918);
INSERT INTO public.games VALUES (NULL, NULL, 229, 72, 827);
INSERT INTO public.games VALUES (NULL, NULL, 230, 72, 602);
INSERT INTO public.games VALUES (NULL, NULL, 231, 71, 625);
INSERT INTO public.games VALUES (NULL, NULL, 232, 71, 793);
INSERT INTO public.games VALUES (NULL, NULL, 233, 71, 37);
INSERT INTO public.games VALUES (NULL, NULL, 234, 73, 535);
INSERT INTO public.games VALUES (NULL, NULL, 235, 73, 16);
INSERT INTO public.games VALUES (NULL, NULL, 236, 74, 903);
INSERT INTO public.games VALUES (NULL, NULL, 237, 74, 352);
INSERT INTO public.games VALUES (NULL, NULL, 238, 73, 292);
INSERT INTO public.games VALUES (NULL, NULL, 239, 73, 308);
INSERT INTO public.games VALUES (NULL, NULL, 240, 73, 173);
INSERT INTO public.games VALUES (NULL, NULL, 241, 75, 424);
INSERT INTO public.games VALUES (NULL, NULL, 242, 75, 495);
INSERT INTO public.games VALUES (NULL, NULL, 243, 76, 324);
INSERT INTO public.games VALUES (NULL, NULL, 244, 76, 411);
INSERT INTO public.games VALUES (NULL, NULL, 245, 75, 473);
INSERT INTO public.games VALUES (NULL, NULL, 246, 75, 410);
INSERT INTO public.games VALUES (NULL, NULL, 247, 75, 466);
INSERT INTO public.games VALUES (NULL, NULL, 248, 77, 102);
INSERT INTO public.games VALUES (NULL, NULL, 249, 77, 939);
INSERT INTO public.games VALUES (NULL, NULL, 250, 78, 188);
INSERT INTO public.games VALUES (NULL, NULL, 251, 78, 341);
INSERT INTO public.games VALUES (NULL, NULL, 252, 77, 481);
INSERT INTO public.games VALUES (NULL, NULL, 253, 77, 970);
INSERT INTO public.games VALUES (NULL, NULL, 254, 77, 964);
INSERT INTO public.games VALUES (NULL, NULL, 255, 79, 15);
INSERT INTO public.games VALUES (NULL, NULL, 256, 80, 320);
INSERT INTO public.games VALUES (NULL, NULL, 257, 80, 589);
INSERT INTO public.games VALUES (NULL, NULL, 258, 81, 559);
INSERT INTO public.games VALUES (NULL, NULL, 259, 81, 731);
INSERT INTO public.games VALUES (NULL, NULL, 260, 80, 749);
INSERT INTO public.games VALUES (NULL, NULL, 261, 80, 776);
INSERT INTO public.games VALUES (NULL, NULL, 262, 80, 202);
INSERT INTO public.games VALUES (NULL, NULL, 263, 82, 788);
INSERT INTO public.games VALUES (NULL, NULL, 264, 82, 473);
INSERT INTO public.games VALUES (NULL, NULL, 265, 83, 662);
INSERT INTO public.games VALUES (NULL, NULL, 266, 83, 821);
INSERT INTO public.games VALUES (NULL, NULL, 267, 82, 678);
INSERT INTO public.games VALUES (NULL, NULL, 268, 82, 589);
INSERT INTO public.games VALUES (NULL, NULL, 269, 82, 427);
INSERT INTO public.games VALUES (NULL, NULL, 270, 84, 152);
INSERT INTO public.games VALUES (NULL, NULL, 271, 84, 32);
INSERT INTO public.games VALUES (NULL, NULL, 272, 85, 271);
INSERT INTO public.games VALUES (NULL, NULL, 273, 85, 600);
INSERT INTO public.games VALUES (NULL, NULL, 274, 84, 642);
INSERT INTO public.games VALUES (NULL, NULL, 275, 84, 621);
INSERT INTO public.games VALUES (NULL, NULL, 276, 84, 303);
INSERT INTO public.games VALUES (NULL, NULL, 277, 86, 485);
INSERT INTO public.games VALUES (NULL, NULL, 278, 86, 153);
INSERT INTO public.games VALUES (NULL, NULL, 279, 87, 57);
INSERT INTO public.games VALUES (NULL, NULL, 280, 87, 659);
INSERT INTO public.games VALUES (NULL, NULL, 281, 86, 439);
INSERT INTO public.games VALUES (NULL, NULL, 282, 86, 822);
INSERT INTO public.games VALUES (NULL, NULL, 283, 86, 200);
INSERT INTO public.games VALUES (NULL, NULL, 284, 88, 771);
INSERT INTO public.games VALUES (NULL, NULL, 285, 88, 725);
INSERT INTO public.games VALUES (NULL, NULL, 286, 89, 538);
INSERT INTO public.games VALUES (NULL, NULL, 287, 89, 443);
INSERT INTO public.games VALUES (NULL, NULL, 288, 88, 515);
INSERT INTO public.games VALUES (NULL, NULL, 289, 88, 18);
INSERT INTO public.games VALUES (NULL, NULL, 290, 88, 913);
INSERT INTO public.games VALUES (NULL, NULL, 291, 90, 361);
INSERT INTO public.games VALUES (NULL, NULL, 292, 90, 782);
INSERT INTO public.games VALUES (NULL, NULL, 293, 91, 770);
INSERT INTO public.games VALUES (NULL, NULL, 294, 91, 41);
INSERT INTO public.games VALUES (NULL, NULL, 295, 90, 97);
INSERT INTO public.games VALUES (NULL, NULL, 296, 90, 188);
INSERT INTO public.games VALUES (NULL, NULL, 297, 90, 488);
INSERT INTO public.games VALUES (NULL, NULL, 298, 92, 334);
INSERT INTO public.games VALUES (NULL, NULL, 299, 92, 171);
INSERT INTO public.games VALUES (NULL, NULL, 300, 93, 348);
INSERT INTO public.games VALUES (NULL, NULL, 301, 93, 372);
INSERT INTO public.games VALUES (NULL, NULL, 302, 92, 69);
INSERT INTO public.games VALUES (NULL, NULL, 303, 92, 631);
INSERT INTO public.games VALUES (NULL, NULL, 304, 92, 820);
INSERT INTO public.games VALUES (NULL, NULL, 305, 94, 932);
INSERT INTO public.games VALUES (NULL, NULL, 306, 94, 926);
INSERT INTO public.games VALUES (NULL, NULL, 307, 95, 313);
INSERT INTO public.games VALUES (NULL, NULL, 308, 95, 2);
INSERT INTO public.games VALUES (NULL, NULL, 309, 94, 74);
INSERT INTO public.games VALUES (NULL, NULL, 310, 94, 745);
INSERT INTO public.games VALUES (NULL, NULL, 311, 94, 785);
INSERT INTO public.games VALUES (NULL, NULL, 312, 96, 899);
INSERT INTO public.games VALUES (NULL, NULL, 313, 96, 388);
INSERT INTO public.games VALUES (NULL, NULL, 314, 97, 370);
INSERT INTO public.games VALUES (NULL, NULL, 315, 97, 863);
INSERT INTO public.games VALUES (NULL, NULL, 316, 96, 827);
INSERT INTO public.games VALUES (NULL, NULL, 317, 96, 274);
INSERT INTO public.games VALUES (NULL, NULL, 318, 96, 965);
INSERT INTO public.games VALUES (NULL, NULL, 319, 98, 875);
INSERT INTO public.games VALUES (NULL, NULL, 320, 98, 681);
INSERT INTO public.games VALUES (NULL, NULL, 321, 99, 77);
INSERT INTO public.games VALUES (NULL, NULL, 322, 99, 641);
INSERT INTO public.games VALUES (NULL, NULL, 323, 98, 235);
INSERT INTO public.games VALUES (NULL, NULL, 324, 98, 39);
INSERT INTO public.games VALUES (NULL, NULL, 325, 98, 397);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1719083684876');
INSERT INTO public.users VALUES (2, 'user_1719083684875');
INSERT INTO public.users VALUES (3, 'user_1719084399851');
INSERT INTO public.users VALUES (4, 'user_1719084399850');
INSERT INTO public.users VALUES (5, 'kg');
INSERT INTO public.users VALUES (6, 'yg');
INSERT INTO public.users VALUES (7, 'pk');
INSERT INTO public.users VALUES (8, 'user_1719085660742');
INSERT INTO public.users VALUES (9, 'user_1719085660741');
INSERT INTO public.users VALUES (10, 'hy');
INSERT INTO public.users VALUES (11, 'gt');
INSERT INTO public.users VALUES (12, 'user_1719087063716');
INSERT INTO public.users VALUES (13, 'user_1719087063715');
INSERT INTO public.users VALUES (14, 'PK');
INSERT INTO public.users VALUES (15, 'user_1719087863005');
INSERT INTO public.users VALUES (16, 'user_1719087863004');
INSERT INTO public.users VALUES (17, 'user_1719087961749');
INSERT INTO public.users VALUES (18, 'user_1719087961748');
INSERT INTO public.users VALUES (19, 'user_1719088221899');
INSERT INTO public.users VALUES (20, 'user_1719088221898');
INSERT INTO public.users VALUES (21, 'user_1719088380464');
INSERT INTO public.users VALUES (22, 'user_1719088380463');
INSERT INTO public.users VALUES (23, 'user_1719088973859');
INSERT INTO public.users VALUES (24, 'user_1719088973858');
INSERT INTO public.users VALUES (25, 'user_1719088984751');
INSERT INTO public.users VALUES (26, 'user_1719088984750');
INSERT INTO public.users VALUES (27, 'user_1719088994607');
INSERT INTO public.users VALUES (28, 'user_1719088994606');
INSERT INTO public.users VALUES (29, 'user_1719089003021');
INSERT INTO public.users VALUES (30, 'user_1719089003020');
INSERT INTO public.users VALUES (31, 'user_1719089012331');
INSERT INTO public.users VALUES (32, 'user_1719089012330');
INSERT INTO public.users VALUES (33, 'user_1719089021594');
INSERT INTO public.users VALUES (34, 'user_1719089021593');
INSERT INTO public.users VALUES (35, 'user_1719089031447');
INSERT INTO public.users VALUES (36, 'user_1719089031446');
INSERT INTO public.users VALUES (37, 'user_1719089046372');
INSERT INTO public.users VALUES (38, 'user_1719089046371');
INSERT INTO public.users VALUES (39, 'user_1719089058594');
INSERT INTO public.users VALUES (40, 'user_1719089058593');
INSERT INTO public.users VALUES (41, 'user_1719089558410');
INSERT INTO public.users VALUES (42, 'user_1719089558409');
INSERT INTO public.users VALUES (43, 'user_1719089713551');
INSERT INTO public.users VALUES (44, 'user_1719089713550');
INSERT INTO public.users VALUES (45, 'user_1719089722467');
INSERT INTO public.users VALUES (46, 'user_1719089722466');
INSERT INTO public.users VALUES (47, 'user_1719089905451');
INSERT INTO public.users VALUES (48, 'user_1719089905450');
INSERT INTO public.users VALUES (49, 'user_1719089914364');
INSERT INTO public.users VALUES (50, 'user_1719089914363');
INSERT INTO public.users VALUES (51, 'user_1719090225039');
INSERT INTO public.users VALUES (52, 'user_1719090225038');
INSERT INTO public.users VALUES (53, 'user_1719090291311');
INSERT INTO public.users VALUES (54, 'user_1719090291310');
INSERT INTO public.users VALUES (55, 'user_1719090343284');
INSERT INTO public.users VALUES (56, 'user_1719090343283');
INSERT INTO public.users VALUES (57, 'user_1719090359556');
INSERT INTO public.users VALUES (58, 'user_1719090359555');
INSERT INTO public.users VALUES (59, 'user_1719090857991');
INSERT INTO public.users VALUES (60, 'user_1719090857990');
INSERT INTO public.users VALUES (61, 'user_1719090868333');
INSERT INTO public.users VALUES (62, 'user_1719090868332');
INSERT INTO public.users VALUES (63, 'user_1719090875138');
INSERT INTO public.users VALUES (64, 'user_1719090875137');
INSERT INTO public.users VALUES (65, 'user_1719090885819');
INSERT INTO public.users VALUES (66, 'user_1719090885818');
INSERT INTO public.users VALUES (67, 'user_1719091129590');
INSERT INTO public.users VALUES (68, 'user_1719091129589');
INSERT INTO public.users VALUES (69, 'user_1719091140041');
INSERT INTO public.users VALUES (70, 'user_1719091140040');
INSERT INTO public.users VALUES (71, 'user_1719091162195');
INSERT INTO public.users VALUES (72, 'user_1719091162194');
INSERT INTO public.users VALUES (73, 'user_1719091175180');
INSERT INTO public.users VALUES (74, 'user_1719091175179');
INSERT INTO public.users VALUES (75, 'user_1719091194586');
INSERT INTO public.users VALUES (76, 'user_1719091194585');
INSERT INTO public.users VALUES (77, 'user_1719091207027');
INSERT INTO public.users VALUES (78, 'user_1719091207026');
INSERT INTO public.users VALUES (79, 'il');
INSERT INTO public.users VALUES (80, 'user_1719091286441');
INSERT INTO public.users VALUES (81, 'user_1719091286440');
INSERT INTO public.users VALUES (82, 'user_1719091304201');
INSERT INTO public.users VALUES (83, 'user_1719091304200');
INSERT INTO public.users VALUES (84, 'user_1719091368881');
INSERT INTO public.users VALUES (85, 'user_1719091368880');
INSERT INTO public.users VALUES (86, 'user_1719091427797');
INSERT INTO public.users VALUES (87, 'user_1719091427796');
INSERT INTO public.users VALUES (88, 'user_1719091439683');
INSERT INTO public.users VALUES (89, 'user_1719091439682');
INSERT INTO public.users VALUES (90, 'user_1719091468570');
INSERT INTO public.users VALUES (91, 'user_1719091468569');
INSERT INTO public.users VALUES (92, 'user_1719091550141');
INSERT INTO public.users VALUES (93, 'user_1719091550140');
INSERT INTO public.users VALUES (94, 'user_1719091566002');
INSERT INTO public.users VALUES (95, 'user_1719091566001');
INSERT INTO public.users VALUES (96, 'user_1719091583474');
INSERT INTO public.users VALUES (97, 'user_1719091583473');
INSERT INTO public.users VALUES (98, 'user_1719091724844');
INSERT INTO public.users VALUES (99, 'user_1719091724843');


--
-- Name: guesses_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guesses_game_id_seq', 325, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 99, true);


--
-- Name: games guesses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT guesses_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
